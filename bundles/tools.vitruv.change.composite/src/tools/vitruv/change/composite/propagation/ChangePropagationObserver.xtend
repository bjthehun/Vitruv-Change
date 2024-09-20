package tools.vitruv.change.composite.propagation

import org.eclipse.emf.ecore.EObject
import tools.vitruv.change.atomic.EChange

interface ChangePropagationObserver {
	def void objectCreated(EObject createdObject);
	
	/**
	 * Event: The CPR rule is considered to fire for the given atomic change.
	 */
	def void consideringChangePropagationRule(ChangePropagationRule rule, EChange<EObject> change);

	/**
	 * Event: The CPR rule is applicable for the given atomic change, and the rule will fire.
	 */
	def void firingChangePropagationRule(ChangePropagationRule rule, EChange<EObject> change);

	/**
	 * Event: The CPR rule has fired for the given change, and modified a model.
	 */
	def void appliedChangePropagationRule(ChangePropagationRule rule, EChange<EObject> change);
}