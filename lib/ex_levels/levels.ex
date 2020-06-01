defmodule ExLevels.Levels do
  @moduledoc """
  Fetches the levels.fyi/still-hiring page
  """

  use HTTPoison.Base

  @base_url "https://www.levels.fyi/still-hiring"

  def fetch do
    get!("").body
  end

  @impl true
  def process_request_url(_path) do
    @base_url
  end
end
