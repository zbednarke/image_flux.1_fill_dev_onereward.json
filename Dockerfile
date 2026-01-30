# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# The workflow includes custom nodes in unknown_registry that could not be automatically resolved.
# These nodes do not provide an aux_id (GitHub repo) so they must be installed manually or skipped.
# - MarkdownNote (no aux_id provided) -> skipped
# - MarkdownNote (no aux_id provided) -> skipped

# download models into comfyui
# No models were specified in the workflow.

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
