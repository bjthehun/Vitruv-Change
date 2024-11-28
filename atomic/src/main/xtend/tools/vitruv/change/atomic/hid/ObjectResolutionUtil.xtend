package tools.vitruv.change.atomic.hid

import edu.kit.ipd.sdq.activextendannotations.Utility
import org.eclipse.emf.ecore.util.EcoreUtil
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.EObject
import static extension edu.kit.ipd.sdq.commons.util.org.eclipse.emf.ecore.resource.ResourceUtil.getFirstRootEObject
import static com.google.common.base.Preconditions.checkState

@Utility
class ObjectResolutionUtil {
	/**
	 * Returns a hierarchic URI fragment for the given {@link EObject}. Its use case is to resolve the same object
	 * in different instances of the same resource loaded into different resource sets.
	 * It is essential that the resources must be in the exact same state, and it is <b>not</b> guaranteed that 
	 * using the returned fragment objects can always be resolved, but at least it gives the chance to do so whenever
	 * the ordinary URI delivered by EMF is not sufficient. So use this method with care!
	 * <p>
	 * Metamodels may use XMI IDs, which are used by EMF as the URI fragment of objects and generated anew
	 * during each load of the same resource. Hence, these URI fragments cannot be used to resolve the same
	 * object across different resource sets containing a loaded instance of the same resource.
	 * The URI fragment generated by this method depends on the fragment given by {@link EcoreUtil#getRelativeURIFragmentPath}
	 * and thus does circumvent the problem of XMI IDs.
	 * <p>
	 * In consequence, for an object <code>objectInResourceSet1</code> contained in a {@link ResourceSet}
	 * <code>resourceSet1</code>, it should be possible to resolve it in another {@link ResourceSet}
	 * <code>resourceSet1</code>, even when its resource uses XMI IDs:
	 * <pre>
	 * <code>
	 *    assertTrue(resourceSet1.getEObject(EcoreUtil.getURI(objectInResourceSet1), false))
	 *    val objectInResourceSet2 = resourceSet2.getEObject(getHierarchicUriFragment(objectInResourceSet1), false)
	 * </code>
	 * </pre>
	 * 
	 * @param object - the {@link EObject} to get a hierarchic URI fragment for
	 * @return a hierarchic URI fragment for the given {@link EObject} 
	 */
	def static getHierarchicUriFragment(EObject object) {
		val resource = object.eResource
		var rootElementIndex = 0;
		val resourceRoot = if (resource.contents.size <= 1) {
				object.eResource.firstRootEObject
			} else {
				// move up containment hierarchy until some container is one of the resource's root elements
				var container = object
				while (container !== null && (rootElementIndex = resource.contents.indexOf(container)) == -1) {
					container = container.eContainer
				}
				checkState(container !== null, "some container of %s must be a root element of its resource", object)
				container
			}
		val fragmentPath = EcoreUtil.getRelativeURIFragmentPath(resourceRoot, object)
		if (fragmentPath.empty) {
			return '/' + rootElementIndex
		} else {
			return '/' + rootElementIndex + '/' + fragmentPath
		}
	}
}
