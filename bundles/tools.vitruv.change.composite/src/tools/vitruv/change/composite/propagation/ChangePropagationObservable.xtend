package tools.vitruv.change.composite.propagation

import org.eclipse.emf.ecore.EObject
import tools.vitruv.change.atomic.EChange

interface ChangePropagationObservable extends ChangePropagationObservableRegistry {
	def void notifyObjectCreated(EObject createdObject);
	
	/**
	 * Event: The CPR rule is considered to fire for the given atomic change.
	 */
	def void notifyConsideringChangePropagationRule(ChangePropagationRule rule, EChange<EObject> change);

	/**
	 * Event: The CPR rule is applicable for the given atomic change, and the rule will fire.
	 */
	def void notifyFiringChangePropagationRule(ChangePropagationRule rule, EChange<EObject> change);

	/**
	 * Event: The CPR rule has fired for the given change, and modified a model.
	 */
	def void notifyAppliedChangePropagationRule(ChangePropagationRule rule, EChange<EObject> change);
}