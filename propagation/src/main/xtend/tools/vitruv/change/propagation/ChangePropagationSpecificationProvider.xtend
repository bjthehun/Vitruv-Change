package tools.vitruv.change.propagation

import java.util.List
import tools.vitruv.change.composite.MetamodelDescriptor

interface ChangePropagationSpecificationProvider extends Iterable<ChangePropagationSpecification> {
	/**
	 * Returns change propagation specifications that react to changes in instances of the
	 * metamodel of the given descriptor. This covers specifications for the exact same metamodel and for
	 * those metamodels in which the given one is contained.
	 * 
	 * @param sourceMetamodelDescriptor a descriptor for the metamodel to find change propagation specifications for
	 * @return change propagation specifications reacting to changes in instances of the metamodel of the given descriptor
	 * 
	 * @see MetamodelDescriptor#contains
	 */
	def List<ChangePropagationSpecification> getChangePropagationSpecifications(
		MetamodelDescriptor sourceMetamodelDescriptor)
}
