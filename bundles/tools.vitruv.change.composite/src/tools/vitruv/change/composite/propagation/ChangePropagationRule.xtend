package tools.vitruv.change.composite.propagation

/**
 * A single component of a {@link ChangePropagationSpecification}.
 * 
 * Whereas full specifications correspond to a Reactions or Mappings file, a single rule
 * corresponds to a single Reaction, respectively.
 */
interface ChangePropagationRule {
	/**
	 * Returns the name of the rule (i.e. the Reaction or Mapping name).
	 */
	def String getRuleName()
}