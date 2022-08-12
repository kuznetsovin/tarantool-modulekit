/* eslint-disable @typescript-eslint/ban-ts-comment */
import * as React from 'react'
import { css } from '@emotion/css'
// @ts-ignore
import { Text, PageSection } from '@tarantool.io/ui-kit'

export const styles = {
    wrap_style: css`
        background-color: #F0F2F5;
    `,
};

interface HelloParams {
    text?: string;
}

interface HelloState {
    text: string
}

class Hello extends React.Component<HelloParams, HelloState> {
    constructor(props: ExportParams) {
        super(props);
        this.state = {
            text: this.props.text === undefined ? 'Hello' : this.props.text,
        }
    }

    render() {
        return (
            <PageSection className={styles.wrap_style}>
                <Text variant="h1">{this.state.text}</Text>
            </PageSection>
        );
    }
}

export default Hello;
