import React, { Component } from 'react'
import { BrowserRouter } from "react-router-dom";
import Header from "../../parts/Header";

export default class App extends Component {
    render() {
        return (
            <BrowserRouter basename="/">
                <Header/>
            </BrowserRouter>
        )
    }
}
