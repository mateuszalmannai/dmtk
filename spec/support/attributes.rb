# Calling this method without any parameters simply returns the hash of attribute names and values.
# The default hash parameters allows any of the attribute values to be overridden
# When you call tool_attributes with a hash of attributes, that hash will get merged with the
# existing attributes hash, i.e. to change the description attribute value:
# tool_attributes(desription: "This, that and the other...")
#
def tool_attributes(overrides = {})
  {
    name: "Pros and Cons",
    description: "Weighing up pros and cons can speed up the decision-making process,
                  improve your understanding of the situation and help you avoid decision-making
                  paralysis.",
    price: 10.00
  }.merge(overrides)
end
