#!/usr/bin/env bash
text="$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)"
percentage="$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)"
echo "{\"text\":\"$text\", \"percentage\":\"$percentage\"}"
exit