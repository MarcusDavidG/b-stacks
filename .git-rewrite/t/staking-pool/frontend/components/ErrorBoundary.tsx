import React, { Component, ReactNode } from 'react';
export class ErrorBoundary extends Component<{children: ReactNode}, {hasError: boolean}> {
    state = { hasError: false };
    static getDerivedStateFromError() { return { hasError: true }; }
    render() { return this.state.hasError ? <div>Error</div> : this.props.children; }
}
