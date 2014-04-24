module ApplicationHelper
  def main_menu_items active_tag
    [
        {tag: "agents", label: "Agents", path: agents_path, active: false},
        {tag: "bands", label: "Bands", path: bands_path, active: false},
        {tag: "albums", label: "Albums", path: albums_path, active: false},
        {tag: "tracks", label: "Tracks", path: tracks_path, active: false}
    ].each do |item|
      item[:active] = item[:tag] == active_tag
    end
  end
end
