/**
 */
package attribute_to_structure_struct_1;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Identified</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link attribute_to_structure_struct_1.Identified#getId <em>Id</em>}</li>
 * </ul>
 *
 * @see attribute_to_structure_struct_1.Attribute_to_structure_struct_1Package#getIdentified()
 * @model abstract="true"
 * @generated
 */
public interface Identified extends EObject
{
	/**
	 * Returns the value of the '<em><b>Id</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Id</em>' attribute.
	 * @see #setId(String)
	 * @see attribute_to_structure_struct_1.Attribute_to_structure_struct_1Package#getIdentified_Id()
	 * @model id="true" required="true" ordered="false"
	 * @generated
	 */
	String getId();

	/**
	 * Sets the value of the '{@link attribute_to_structure_struct_1.Identified#getId <em>Id</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Id</em>' attribute.
	 * @see #getId()
	 * @generated
	 */
	void setId(String value);

} // Identified
