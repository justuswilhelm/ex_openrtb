defmodule ExOpenRTB.Source do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :fd,  # TODO 0/1 validation Justus 2017-02-06
    :tid,
    :pchain,  # TODO validation Justus 2017-02-06
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const(:fd, &ExOpenRTB.Constants.fd/1)
    end
  end
end
