do

--Plugin By mehran_HPR
local function run(msg, matches)
  local eq = URL.escape(matches[1])

  local url = "http://latex.codecogs.com/png.download?".."\\dpi{800}%20\\LARGE%20#"..eq

  local receiver = get_receiver(msg)
  send_sticker_from_url(receiver, url, send_title, {receiver, title})
end

return {
  patterns = {
    "^[/#!][Tt]ts (.+)$"
  },
  run = run
}

end
--Plugin by Mehran_hpr Please dont remove it