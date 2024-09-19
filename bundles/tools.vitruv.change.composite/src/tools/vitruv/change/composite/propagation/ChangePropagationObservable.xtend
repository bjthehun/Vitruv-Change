package tools.vitruv.change.composite.propagation

import org.eclipse.emf.ecore.EObject

interface ChangePropagationObservable extends ChangePropagationObservableRegistry {
	def void notifyObjectCreated(EObject createdObject);
}