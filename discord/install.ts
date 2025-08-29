import { $ } from "bun";
import { rmSync, existsSync } from "fs";

const version: string = await globalThis.__import(`getVersion`);

if (existsSync("Discord")) rmSync("Discord", { recursive: true, force: true });

await $`curl -L "https://discord.com/api/download?platform=linux&format=tar.gz" -o Discord.tar.gz`;
await $`tar -xzf Discord.tar.gz`;
rmSync("Discord.tar.gz");
export default version;