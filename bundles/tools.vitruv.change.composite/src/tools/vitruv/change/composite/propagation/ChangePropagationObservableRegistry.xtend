package tools.vitruv.change.composite.propagation

interface ChangePropagationObservableRegistry {
	def void registerObserver(ChangePropagationObserver observer);
	def void deregisterObserver(ChangePropagationObserver observer);
}