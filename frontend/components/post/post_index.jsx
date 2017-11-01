import React, { Component } from 'react';
import { Route } from 'react-router-dom'; 

// import PostIndexItem from './post_index_item';

class PostIndex extends Component {
  componentWillMount() {
    this.props.requestAllPosts();
  }

  render() {
    return (
      <h1>post index</h1>
    );
  }

}

export default PostIndex;