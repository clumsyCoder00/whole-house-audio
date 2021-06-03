import asyncio
import snapcast.control
import time

# https://github.com/happyleavesaoc/python-snapcast

loop = asyncio.get_event_loop()

#activeStreamCount = 0
activeStream = ''

# print all client names
#print("\nClients")
#for client in server.clients:
#  print(client.friendly_name)

# print all stream names
#print("\nStreams")
while True:
	server = loop.run_until_complete(snapcast.control.create_server(loop, 'localhost'))
	activeStreamCount = 0
	for stream in server.streams:
		#print(stream.friendly_name + " " + stream.status + " " + stream.identifier)
		if stream.status == 'playing':
			#print(stream.friendly_name)
			activeStreamCount +=1
			activeStream = stream.identifier

	if activeStreamCount == 1:
		# print all groups
		#print("\nGroups")
		for group in server.groups:
			#print(group.friendly_name + " " + group.stream + " " + group.identifier)
			loop.run_until_complete(server.group_stream(group.identifier, activeStream))
	time.sleep(1)

# server.on_stream_update
