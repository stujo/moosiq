module ApplicationHelper
  def main_menu_items active_tag
    [
        {tag: "agents", label: "Agents", path: agents_path, active: false},
        {tag: "bands", label: "Bands", path: bands_path, active: false},
        {tag: "albums", label: "Albums", path: albums_path, active: false},
        {tag: "tracks", label: "Tracks", path: tracks_path, active: false},
        {tag: "artists", label: "Artists", path: artists_path, active: false},
        {tag: "super_fans", label: "SuperFans", path: super_fans_path, active: false},
    ].each do |item|
      item[:active] = item[:tag] == active_tag
    end
  end

  def age_from_dob(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end


end