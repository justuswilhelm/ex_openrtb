defmodule ExOpenRTB.Geo do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :lat,
    :lon,
    :type,
    :accuracy,
    :lastfix,
    :integer,
    :ipservice,
    :country,
    :region,
    :regionfips104,
    :metro,
    :city,
    :zip,
    :utcoffset,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const(:type, &ExOpenRTB.Constants.locationtype/1)
      |> map_const(:ipservice, &ExOpenRTB.Constants.ipservice/1)
    end
  end
end
