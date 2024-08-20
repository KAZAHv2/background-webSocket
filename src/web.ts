import { WebPlugin } from '@capacitor/core';

import type { websocketBgPlugin } from './definitions';

export class websocketBgWeb extends WebPlugin implements websocketBgPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
