album1 = Album.create!(
  id: 123,
  mediaUrl: '123url',
  isWide: true,
  textColor: '123',
  onMapsLink: '123',
  name: 'name',
  bgColor: '123',
  # media: [Medium.first
)

media1 = Medium.create!(
  id: 123,
  content: '123',
  contentType: 'photo',
  mediumable_id: 123,
  mediumable_type: 'Album',
)