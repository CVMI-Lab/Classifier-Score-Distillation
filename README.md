# Text-to-3D with Classifier Score Distillation

[Xin Yu](https://scholar.google.com/citations?user=JX8kSoEAAAAJ&hl=zh-CN), [Yuan-Chen Guo](https://scholar.google.com/citations?user=b7ZJV9oAAAAJ&hl=zh-CN), [Yangguang Li](https://yg256li.github.io/), [Ding Liang](https://scholar.google.com/citations?user=Dqjnn0gAAAAJ&hl=zh-CN), [Song-Hai Zhang](https://scholar.google.com/citations?user=AWtV-EQAAAAJ&hl=en), [Xiaojuan Qi](https://scholar.google.com/citations?user=bGn0uacAAAAJ&hl=en)

### [Project Page](https://xinyu-andy.github.io/Classifier-Score-Distillation/) | [Paper](https://arxiv.org/abs/2310.19415)

![Example 1](./load/images/csd_img.png)



## Abstract
Text-to-3D generation has made remarkable progress recently, particularly with methods based on Score Distillation Sampling (SDS) that leverages pre-trained 2D diffusion models. While the usage of classifier-free guidance is well acknowledged to be crucial for successful optimization, it is considered an auxiliary trick rather than the most essential component. In this paper, we re-evaluate the role of classifier-free guidance in score distillation and discover a surprising finding: the guidance alone is enough for effective text-to-3D generation tasks. We name this method Classifier Score Distillation (CSD), which can be interpreted as using an implicit classification model for generation. This new perspective reveals new insights for understanding existing techniques. We validate the effectiveness of CSD across a variety of text-to-3D tasks including shape generation, texture synthesis, and shape editing, achieving results superior to those of state-of-the-art methods.

<table>
  <tr>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/Vintage_leather_jacket,_distressed,_high-quality_textures,_8K_resolution.mp4" type="video/mp4">
      </video>
    </td>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/Digital_camera,_rubber_grip,_high-quality_textures,_8K_resolution.mp4" type="video/mp4">
      </video>
    </td>
  </tr>
  <tr>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/Jeep,_high-quality,_8K_resolution,_detailed_textures..mp4" type="video/mp4">
      </video>
    </td>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/Art_Deco_lamp,_geometric_glass_shade,_high-quality_brass_base,_intricate_details,_8K_resolution,_detailed_textures..mp4" type="video/mp4">
      </video>
    </td>
  </tr>
  <tr>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/John_Wick,_full_body,_high-quality_tactical_suit,_8K_resolution,_photorealistic..mp4" type="video/mp4">
      </video>
    </td>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/Aloy_from_Horizon_Zero_Dawn,_full_body,_high-quality_leather_and_metal_armor_textures,_8K_resolution,_photorealistic..mp4" type="video/mp4">
      </video>
    </td>
  </tr>
  <tr>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/Owl_wearing_a_wizard_robe,_full_body,_high-quality_textures,_8K_resolution,_photorealistic..mp4" type="video/mp4">
      </video>
    </td>
    <td>
      <video width="320" height="120" autoplay loop muted>
        <source src="https://xinyu-andy.github.io/Classifier-Score-Distillation/static/gallary/Jack_Sparrow_from_Pirates_of_the_Caribbean,_full_body,_high-quality_textures,_8K_resolution,_photorealistic..mp4" type="video/mp4">
      </video>
    </td>
  </tr>
</table>



## Installation
The codebase is built upon the Threestudio framework. Please follow the installation instructions available at the [Threestudio](https://github.com/threestudio-project/threestudio) repository for environment setup and basic usage.
## Running the Code
To run the Classifier Score Distillation (CSD) code, simply execute the provided `run.sh` script. 
For prompts that do not contain clear directional objects, it is recommended to use the alternative configuration by running `run2.sh`, which is tailored for such scenarios.

## Addressing the Janus Problem
While this work does not directly solve the Janus problem, as it primarily arises from the lack of 3D-aware capabilities in diffusion guidance, we offer a workaround. By combining [multi-view diffusion guidance](https://github.com/bytedance/MVDream-threestudio) with our CSD, it is possible to address this issue. For this, please refer to the code in the 'CSD-MVDream' branch.

## Credits
This codebase is built upon the [Threestudio](https://github.com/threestudio-project/threestudio). Thanks to the authors for their great codebase and contribution to the community.

## Citation
Please consider :grimacing: staring this repository and citing our work if you feel this repository useful.

```
@article{yu2023text,
  title={Text-to-3d with classifier score distillation},
  author={Yu, Xin and Guo, Yuan-Chen and Li, Yangguang and Liang, Ding and Zhang, Song-Hai and Qi, Xiaojuan},
  journal={arXiv preprint arXiv:2310.19415},
  year={2023}
}
```

## Contact
If you have any questions, you can email me (yuxin27g@gmail.com).


