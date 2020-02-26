import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import IndexPage from './IndexPage'
import RestroomShowContainer from './RestroomShowContainer'


const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={IndexPage} />
        <Route exact path="/restrooms" component={IndexPage} />
        <Route exact path="/restrooms/:id" component={RestroomShowContainer} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
