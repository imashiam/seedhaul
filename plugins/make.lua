do

local function run(msg, matches)
  if matches[1] == "make" then
      local receiver = get_receiver(msg)
      send_document(receiver, "./sticker/"..msg.from.id..".webp", ok_cb, false)
      return 'by @ashi_king_kaboos :)) '
  end
end

return {
  patterns = {
  "^([Mm]ake)$",
  },
  run = run
}
end
