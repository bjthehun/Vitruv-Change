/**
 */
package tools.vitruv.change.interaction;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Multiple Choice Single Selection User Interaction</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link tools.vitruv.change.interaction.MultipleChoiceSingleSelectionUserInteraction#getSelectedIndex <em>Selected Index</em>}</li>
 * </ul>
 *
 * @see tools.vitruv.change.interaction.InteractionPackage#getMultipleChoiceSingleSelectionUserInteraction()
 * @model
 * @generated
 */
public interface MultipleChoiceSingleSelectionUserInteraction extends MultipleChoiceSelectionInteractionBase
{
	/**
	 * Returns the value of the '<em><b>Selected Index</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Selected Index</em>' attribute.
	 * @see #setSelectedIndex(int)
	 * @see tools.vitruv.change.interaction.InteractionPackage#getMultipleChoiceSingleSelectionUserInteraction_SelectedIndex()
	 * @model
	 * @generated
	 */
	int getSelectedIndex();

	/**
	 * Sets the value of the '{@link tools.vitruv.change.interaction.MultipleChoiceSingleSelectionUserInteraction#getSelectedIndex <em>Selected Index</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Selected Index</em>' attribute.
	 * @see #getSelectedIndex()
	 * @generated
	 */
	void setSelectedIndex(int value);

} // MultipleChoiceSingleSelectionUserInteraction
