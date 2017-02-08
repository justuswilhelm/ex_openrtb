defmodule ExOpenRTB.User do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :id,
    :buyeruid,
    :yob,
    :gender,
    :keywords,
    :customdata,
    :geo,
    :data,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_decoder(:geo, %ExOpenRTB.Geo{})
      |> map_decoder(:data, [%ExOpenRTB.Data{}])
    end
  end
end
