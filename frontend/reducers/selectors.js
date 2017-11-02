import values from 'lodash/values';

export const selectAllPosts = state => values(state.entities.posts)
export const selectAllPics = state => values(state.entities.pictures)