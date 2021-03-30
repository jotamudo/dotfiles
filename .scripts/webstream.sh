#!/bin/bash
pactl load-module module-null-sink sink_name="webstream_sink" sink_properties=device.description="web_stream"
pactl load-module module-loopback source=webstream_sink.monitor sink=alsa_output.pci-0000_00_1f.3.analog-stereo rate=44100
