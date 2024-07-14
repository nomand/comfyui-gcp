#!/bin/bash

# make sure you are in comfyui installation folder
mkdir -p ./models/facerestore_models/

#COMFY MANAGER
git clone https://github.com/ltdrdata/ComfyUI-Manager.git custom_nodes/ComfyUI-Manager
pip install -r custom_nodes/ComfyUI-Manager/requirements.txt

#ControlNet
git clone https://github.com/Fannovel16/comfyui_controlnet_aux custom_nodes/comfyui_controlnet_aux
pip install -r custom_nodes/comfyui_controlnet_aux/requirements.txt

git clone https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet custom_nodes/ComfyUI-Advanced-ControlNet
pip install -r custom_nodes/ComfyUI-Advanced-ControlNet/requirements.txt

git clone https://github.com/space-nuko/ComfyUI-OpenPose-Editor

#IPADAPTER
pip install insightface
git clone https://github.com/cubiq/ComfyUI_IPAdapter_plus custom_nodes/ComfyUI_IPAdapter_plus
git clone https://github.com/cubiq/ComfyUI_FaceAnalysis custom_nodes/ComfyUI_FaceAnalysis

#AnimateDiff
git clone https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved custom_nodes/ComfyUI-AnimateDiff-Evolved

git clone https://github.com/Fannovel16/ComfyUI-Frame-Interpolation custom_nodes/ComfyUI-Frame-Interpolation
python custom_nodes/ComfyUI-Frame-Interpolation/install.py

git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite custom_nodes/ComfyUI-VideoHelperSuite
pip install -r custom_nodes/ComfyUI-VideoHelperSuite/requirements.txt 

git clone https://github.com/banodoco/steerable-motion custom_nodes/steerable-motion
pip install -r custom_nodes/steerable-motion/requirements.txt

git clone https://github.com/Fannovel16/ComfyUI-Video-Matting custom_nodes/ComfyUI-Video-Matting
pip install -r custom_nodes/ComfyUI-Video-Matting/requirements.txt

# reactor
git clone https://github.com/Gourieff/comfyui-reactor-node custom_nodes/comfyui-reactor-node
python custom_nodes/comfyui-reactor-node/install.py
wget -P ~/models/facerestore_models https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth
wget -P ~/models/facerestore_models https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth

# WAS
git clone https://github.com/WASasquatch/was-node-suite-comfyui custom_nodes/was-node-suite-comfyui
pip install -r custom_nodes/was-node-suite-comfyui/requirements.txt

git clone https://github.com/WASasquatch/WAS_Extras custom_nodes/WAS_Extras
python custom_nodes/WAS_Extras/install.py

#sdxl_prompt_styler
git clone https://github.com/twri/sdxl_prompt_styler custom_nodes/sdxl_prompt_styler

# Face Stuff
git clone https://github.com/mav-rik/facerestore_cf custom_nodes/facerestore_cf
wget https://github.com/TencentARC/GFPGAN/releases/download/v1.3.4/GFPGANv1.4.pth -P ./models/facerestore_models/
wget https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth -P ./models/facerestore_models/

git clone https://github.com/KwaiVGI/LivePortrait custom_nodes/LivePortrait
pip install -r custom_nodes/LivePortrait/requirements.txt

git clone https://github.com/ToTheBeginning/PuLID custom_nodes/PuLID
pip install -r custom_nodes/PuLID/requirements.txt

# Upscale
git clone https://github.com/Ttl/ComfyUi_NNLatentUpscale custom_nodes/ComfyUi_NNLatentUpscale

# UTIL
git clone https://github.com/cubiq/ComfyUI_essentials custom_nodes/ComfyUI_essentials
pip install -r custom_nodes/ComfyUI_essentials/requirements.txt

git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack custom_nodes/ComfyUI-Impact-Pack
python custom_nodes/ComfyUI-Impact-Pack/install.py

git clone https://github.com/kijai/ComfyUI-KJNodes custom_nodes/ComfyUI-KJNodes
pip install -r custom_nodes/ComfyUI-KJNodes/requirements.txt 

git clone https://github.com/FizzleDorf/ComfyUI_FizzNodes custom_nodes/ComfyUI_FizzNodes
pip install -r custom_nodes/ComfyUI_FizzNodes/requirements.txt 

git clone https://github.com/evanspearman/ComfyMath custom_nodes/ComfyMath
pip install -r custom_nodes/ComfyMath/requirements.txt

git clone https://github.com/crystian/ComfyUI-Crystools custom_nodes/ComfyUI-Crystools
pip install -r custom_nodes/ComfyUI-Crystools/requirements.txt

git clone https://github.com/chrisfreilich/virtuoso-nodes custom_nodes/virtuoso-nodes
pip install -r custom_nodes/virtuoso-nodes/requirements.txt

git clone https://github.com/melMass/comfy_mtb custom_nodes/comfy_mtb
pip install -r custom_nodes/comfy_mtb/requirements.txt
python custom_nodes/comfy_mtb/scripts/download_models.py 

git clone https://github.com/shingo1228/ComfyUI-SDXL-EmptyLatentImage custom_nodes/ComfyUI-SDXL-EmptyLatentImage
git clone https://github.com/WASasquatch/FreeU_Advanced
git clone https://github.com/Nourepide/ComfyUI-Allor custom_nodes/ComfyUI-Allor
git clone https://github.com/bash-j/mikey_nodes
git clone https://github.com/M1kep/ComfyLiterals
git clone https://github.com/rgthree/rgthree-comfy
git clone https://github.com/chrisfreilich/virtuoso-nodes
git clone https://github.com/pythongosssss/ComfyUI-Custom-Scripts
git clone https://github.com/palant/image-resize-comfyui custom_nodes/image-resize-comfyui



