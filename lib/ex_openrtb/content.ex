defmodule ExOpenRTB.Content do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :id,
    :episode,
    :title,
    :series,
    :season,
    :artist,
    :genre,
    :album,
    :isrc,
    :producer,
    :url,
    :cat,
    :prodq,
    :videoquality,
    :context,
    :contentrating,
    :userrating,
    :qagmediarating,
    :keywords,
    :livestream,
    :sourcerelationship,
    :len,
    :language,
    :embeddable,
    :data,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_decoder(:producer, %ExOpenRTB.Producer{})
    end
  end
end
