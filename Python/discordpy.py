import discord
import asyncio

client = discord.Client()

@client.event
async def on_message(message):
    if message.content.startswith('ping'):
        await client.send_message(message.channel, 'Pong!')

client.run('token')
