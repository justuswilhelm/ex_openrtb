defmodule ExOpenRTB.Producer do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :id,
    :name,
    :cat,
    :domain,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const_list(:cat, &ExOpenRTB.Constants.content_category/1)
    end
  end
end
