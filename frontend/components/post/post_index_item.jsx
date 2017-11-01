import React, { Component } from 'react';

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
      </div>
    );
  }

}

export default PostIndexItem;