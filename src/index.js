import * as React from 'react';
import { IconEmptyData } from '@tarantool.io/ui-kit';
import Hello from './Hello';

const PAGE_NAME = 'hello_world'

window.tarantool_enterprise_core.register(
  PAGE_NAME,
  [{
    label: 'Hello world',
    path: `/${PAGE_NAME}`,
    icon: <IconEmptyData />
  }],
  Hello,
  'react'
);


if (window.tarantool_enterprise_core.install) {
  window.tarantool_enterprise_core.install();
}
