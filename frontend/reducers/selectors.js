import values from 'lodash/values';

export const selectAllPosts = state => values(state.entities.posts)
export const selectAllPics = (state, props) => {
  const pics = values(state.entities.pictures).filter( function(pic) {
    
    return pic.post_id === props.postId;
  })
  
  return pics ? pics : []
}