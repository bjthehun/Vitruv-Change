package tools.vitruv.change.propagation

/**
 * A single component of a {@link ChangePropagationSpecification}.
 * 
 * Whereas full specifications correspond to a Reactions or Mappings file, a single component
 * corresponds to a single Reaction, respectively.
 */
interface ChangePropagationSpecificationComponent {
	/**
	 * Returns the name of the component (i.e. the Reaction or Mapping name).
	 */
	def String getComponentName()
}