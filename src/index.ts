import { registerPlugin } from '@capacitor/core';

import type { websocketBgPlugin } from './definitions';

const websocketBg = registerPlugin<websocketBgPlugin>('websocketBg', {
  web: () => import('./web').then(m => new m.websocketBgWeb()),
});

export * from './definitions';
export { websocketBg };
