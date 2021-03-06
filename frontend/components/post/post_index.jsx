import React, { Component } from 'react';
import { Route } from 'react-router-dom'; 

import PostIndexItem from './post_index_item';

class PostIndex extends Component {
  componentWillMount() {
    this.props.requestAllPosts();
  }

  render() {
    const { posts } = this.props;
    return (
      <ul>
        {posts.map(post => <PostIndexItem 
        key={post.id} 
        post={post}
        />)}
      </ul>
    );
  }

}

export default PostIndex;