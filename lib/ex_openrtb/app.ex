defmodule ExOpenRTB.App do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :id,
    :name,
    :bundle,
    :domain,
    :storeurl,
    :cat,
    :sectioncat,
    :pagecat,
    :ver,
    :privacypolicy,
    :paid,
    :publisher,
    :content,
    :keywords,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const_list(:cat, &ExOpenRTB.Constants.content_category/1)
      |> map_const_list(:sectioncat, &ExOpenRTB.Constants.content_category/1)
      |> map_const_list(:pagecat, &ExOpenRTB.Constants.content_category/1)
      |> map_bool(:privacy_policy)
      |> map_const(:paid, &ExOpenRTB.Constants.yesno/1)
      |> map_decoder(:publisher, %ExOpenRTB.Publisher{})
      |> map_decoder(:content, %ExOpenRTB.Content{})
    end
  end
end
