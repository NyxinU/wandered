export const fetchAllPictures = (postId) => (
  $.ajax({
    method: 'GET',
    url: 'api/pictures',
    data: {postId}
  })
);

export const createPicture = picture => (
  $.ajax({
    method: 'POST',
    url: 'api/pictures',
    data: { picture }
  })
);

export const destroyPost = id => (
  $.ajax({
    method: 'DELETE',
    url: `/api/pictures/${id}`
  })
)