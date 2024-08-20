export interface websocketBgPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
