#!/bin/bash

mkdir -p ./models/checkpoints/
	mkdir -p ./models/checkpoints/1.5/
	mkdir -p ./models/checkpoints/SDXL/

mkdir -p ./models/loras/
	mkdir -p ./models/loras/1.5/
		mkdir -p ./models/loras/anatomy/
	mkdir -p ./models/loras/SDXL/

mkdir -p ./models/animatediff_models/ 
mkdir -p ./models/animatediff_motion_lora/

mkdir -p ./models/clip/
mkdir -p ./models/clip_vision/
mkdir -p ./models/gligen/
mkdir -p ./models/ipadapter/
mkdir -p ./models/upscale_models/
mkdir -p ./models/insightface/models/antelopev2/
mkdir -p ./models/embeddings/positive/
mkdir -p ./models/embeddings/negative/


# SD1.5
wget https://huggingface.co/autismanon/modeldump/resolve/main/dreamshaper_8.safetensors 		-P ./models/checkpoints/1.5/	# dreamshaper 8
wget https://civitai.com/api/download/models/251662 --content-disposition						-P ./models/checkpoints/1.5/	# dreamshaper xl
wget https://civitai.com/api/download/models/97744 --content-disposition						-P ./models/checkpoints/1.5/	# realcartoonrealistic
wget https://civitai.com/api/download/models/107842 --content-disposition						-P ./models/checkpoints/1.5/	# aniVerse
wget https://civitai.com/api/download/models/147548 --content-disposition						-P ./models/checkpoints/1.5/	# anihelloy2D
wget https://civitai.com/api/download/models/46422 --content-disposition						-P ./models/checkpoints/1.5/	# juggernaut_reborn
wget https://civitai.com/api/download/models/25694 --content-disposition						-P ./models/checkpoints/1.5/	# epicRealism

# SDXL
wget https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors 			-P ./models/checkpoints/SDXL/	# base
wget https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors 		-P ./models/checkpoints/SDXL/	# refiner
wget https://civitai.com/api/download/models/112902/dreamshaper-xl --content-disposition								-P ./models/checkpoints/SDXL/	# dreamshaper XL

# VAE
wget https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors 	-P ./models/vae/ 

# clip vision
wget -O ./models/clip_vision/SDXL_CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors # SDXL
wget -O ./models/clip_vision/SD15_CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors 		# 1.5
wget -O ./models/clip_vision/CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors https://huggingface.co/h94/IP-Adapter/resolve/main/models/image_encoder/model.safetensors
wget -O ./models/clip_vision/CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors

# IPAdapter
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15.safetensors 						-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_light_v11.bin 					-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus_sd15.safetensors 				-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-plus-face_sd15.safetensors 			-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter-full-face_sd15.safetensors 			-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_vit-G.safetensors 				-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl_vit-h.safetensors 			-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus_sdxl_vit-h.safetensors 		-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter-plus-face_sdxl_vit-h.safetensors -P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors 				-P ./models/ipadapter/
wget https://huggingface.co/ostris/ip-composition-adapter/resolve/main/ip_plus_composition_sd15.safetensors 	-P ./models/ipadapter/
wget https://huggingface.co/ostris/ip-composition-adapter/resolve/main/ip_plus_composition_sdxl.safetensors 	-P ./models/ipadapter/
# FaceID
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15.bin wget					-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15.bin				-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait-v11_sd15.bin			-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl.bin						-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl.bin				-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl.bin				-P ./models/ipadapter/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-portrait_sdxl_unnorm.bin		-P ./models/ipadapter/
# FaceID LoRA
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sd15_lora.safetensors 			-P ./models/models/loras/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sd15_lora.safetensors 	-P ./models/models/loras/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid_sdxl_lora.safetensors 			-P ./models/models/loras/
wget https://huggingface.co/h94/IP-Adapter-FaceID/resolve/main/ip-adapter-faceid-plusv2_sdxl_lora.safetensors 	-P ./models/models/loras/
# Insightface
wget https://huggingface.co/MonsterMMORPG/tools/blob/main/1k3d68.onnx 											-P ./models/insightface/models/antelopev2/
wget https://huggingface.co/MonsterMMORPG/tools/blob/main/2d106det.onnx											-P ./models/insightface/models/antelopev2/
wget https://huggingface.co/MonsterMMORPG/tools/blob/main/genderage.onnx										-P ./models/insightface/models/antelopev2/
wget https://huggingface.co/MonsterMMORPG/tools/blob/main/glintr100.onnx										-P ./models/insightface/models/antelopev2/
wget https://huggingface.co/MonsterMMORPG/tools/blob/main/scrfd_10g_bnkps.onnx									-P ./models/insightface/models/antelopev2/

# ControlNet 1.5
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors 			-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors 			-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors 			-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_scribble_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_seg_fp16.safetensors 			-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors 		-P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors -P ./models/controlnet/
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11u_sd15_tile_fp16.safetensors 			-P ./models/controlnet/
# ControlNet SDXL
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-canny-rank256.safetensors 				-P ./models/controlnet/
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-depth-rank256.safetensors 				-P ./models/controlnet/
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-recolor-rank256.safetensors 			-P ./models/controlnet/
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-sketch-rank256.safetensors 			-P ./models/controlnet/
wget -O ./models/controlnet/depth-sdxl-1.0-diffusion_pytorch_model.bin https://huggingface.co/diffusers/controlnet-depth-sdxl-1.0-mid/resolve/main/diffusion_pytorch_model.bin

# AnimateDiff
wget https://huggingface.co/hotshotco/Hotshot-XL/resolve/main/hsxl_temporal_layers.f16.safetensors 							-P ./models/animatediff_models 
wget https://huggingface.co/hotshotco/SDXL-512/resolve/main/hsxl_base_1.0.f16.safetensors 									-P ./models/animatediff_models 
wget https://huggingface.co/guoyww/animatediff/resolve/main/mm_sd_v15.ckpt 													-P ./models/animatediff_models 
wget https://huggingface.co/guoyww/animatediff/resolve/main/mm_sd_v15_v2.ckpt 												-P ./models/animatediff_models 
wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_mm.ckpt 												-P ./models/animatediff_models 
wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_sparsectrl_rgb.ckpt 									-P ./models/animatediff_models 
wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_sparsectrl_scribble.ckpt 								-P ./models/animatediff_models 
wget https://huggingface.co/ByteDance/AnimateDiff-Lightning/resolve/main/animatediff_lightning_8step_comfyui.safetensors 	-P ./models/animatediff_models  
wget https://huggingface.co/ByteDance/AnimateDiff-Lightning/resolve/main/animatediff_lightning_4step_comfyui.safetensors 	-P ./models/animatediff_models
wget https://huggingface.co/ByteDance/AnimateDiff-Lightning/resolve/main/animatediff_lightning_2step_comfyui.safetensors 	-P ./models/animatediff_models
wget https://huggingface.co/ByteDance/AnimateDiff-Lightning/resolve/main/animatediff_lightning_1step_comfyui.safetensors 	-P ./models/animatediff_models
# AnimateDiff Loras
wget https://huggingface.co/ArtGAN/Controlnet/resolve/main/lcm-lora-sdv1-5.safetensors 			-P ./models/loras/ 
wget https://huggingface.co/ArtGAN/Controlnet/resolve/main/lcm-lora-sdxl.safetensors 			-P ./models/loras/ 
# AnimateDiff Motion Loras
wget https://huggingface.co/guoyww/animatediff/resolve/main/v3_sd15_adapter.ckpt 				-P ./custom_nodes/ComfyUI-AnimateDiff-Evolved/motion_lora/
wget https://huggingface.co/ArtGAN/Controlnet/resolve/main/shatterAnimatediff_v10.safetensors 	-P ./custom_nodes/ComfyUI-AnimateDiff-Evolved/motion_lora/

# LCM
wget -O ./models/loras/lcm-lora-sdv1-5.safetensors https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/resolve/main/pytorch_lora_weights.safetensors # LCM

# LoRas
wget https://huggingface.co/ArtGAN/Controlnet/resolve/main/add_detail.safetensors 				-P ./models/loras/			# more_detail
wget https://civitai.com/api/download/models/128417 --content-disposition  						-P ./models/loras/anatomy/	# age-slider

# Upscalers
wget https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/4x_NickelbackFS_72000_G.pth 					-P  ./models/upscale_models
wget https://github.com/Phhofm/models/releases/download/4xRealWebPhoto_v4_dat2/4xRealWebPhoto_v4_dat2.pth 	-P  ./models/upscale_models
wget https://github.com/Phhofm/models/releases/download/4xNomos2_otf_esrgan/4xNomos2_otf_esrgan.pth			-P  ./models/upscale_models
wget https://github.com/Phhofm/models/releases/download/4xNomos8k_atd_jpg/4xNomos8k_atd_jpg.pth 			-P  ./models/upscale_models

# GLIGEN
wget -c https://huggingface.co/comfyanonymous/GLIGEN_pruned_safetensors/resolve/main/gligen_sd14_textbox_pruned_fp16.safetensors -P ./models/gligen/

# Embeddings
wget https://civitai.com/api/download/models/72437 --content-disposition  				-P ./models/embeddings/negative/	#baddream
wget https://civitai.com/api/download/models/116230 --content-disposition  				-P ./models/embeddings/negative/	#badhands
wget https://civitai.com/api/download/models/7808 --content-disposition  				-P ./models/embeddings/negative/	#easynegative 
wget https://civitai.com/api/download/models/71961 --content-disposition  				-P ./models/embeddings/negative/	#fastnegative 


