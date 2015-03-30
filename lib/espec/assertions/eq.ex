defmodule ESpec.Assertions.Eq do

  use ESpec.Assertion

  defp match(subject, value) do
    result = subject == value
    {result, result}
  end

  defp error_message(subject, data, _result, positive) do
    to = if positive, do: "to", else: "not to"
    but = if positive, do: "doesn't", else: "does"
    "Expected `#{inspect subject}` #{to} equals (==) `#{inspect data}`, but it #{but}."
  end

end
