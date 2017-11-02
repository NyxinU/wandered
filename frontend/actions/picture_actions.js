import * as APIUtil from '../util/picture_api_util';

export const RECEIVE_PICS = 'RECEIVE_PICS';
export const RECEIVE_PIC = 'RECEIVE_PIC';
export const REMOVE_PIC = 'REMOVE_PICS';
export const RECEIVE_PIC_ERRORS = 'RECEIVE_PIC_ERRORS';

export const requestAllPics = (postId) => dispatch => (
  APIUtil.fetchAllPictures(postId).then(pics => (
    dispatch(receivePics(pics))
  ),err => dispatch(receivePicErrors(err.responseJSON)))
);

export const requestPic = id => dispatch => (
  APIUtil.fetchAllPictures().then(pic => (
    dispatch(receivePic(pic))
  ),err => dispatch(receivePicErrors(err.responseJSON)))
);

export const createPost = post => dispatch => (
  APIUtil.createPic(pic).then(pic => (
    dispatch(receivePic(pic))
  ), err => dispatch(receivePicErrors(err.responseJSON)))
);

export const deletePic = id => dispatch => (
  APIUtil.destroyPic(id).then(pic => (
    dispatch(removePic(pic))
  ), err => dispatch(receivePicErrors(err.responseJSON)))
);

export const receivePics = pics => ({
  type: RECEIVE_PICS,
  pics
});

export const receivePic = pic => ({
  type: RECEIVE_PIC,
  pic
});

export const removePic = pic => ({
  type: REMOVE_PIC,
  pic
});

export const receivePicErrors = picErrors => ({
  type: RECEIVE_PIC_ERRORS,
  picErrors
});
