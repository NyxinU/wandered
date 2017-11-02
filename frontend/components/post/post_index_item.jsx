import React, { Component } from 'react';

import PicIndexContainer from "../pictures/picture_index_container";

class PostIndexItem extends Component {
  constructor(props) {
    super(props);

  }

  render(){
    const {post} = this.props;

    return (
      <div>
        <h2>{post.title}</h2>
        <p>{post.description}</p>
        <PicIndexContainer postId={post.id} />
      </div>
    );
  }

}

export default PostIndexItem;