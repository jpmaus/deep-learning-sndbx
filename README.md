# deep-learning-sndbx
python (BigGANx2048), MATLAB (wavenet, arss GUI), &amp; WLNET (VAE, WGAN, etc.)
# whatis
some deep-learning codes either nabbed from somewhere or written by me for: Python, MATLAB, and Mathematica.  
# structure
* matlab
   * arss_gui: an (unfinished) mlapp GUI for [ARSS](http://arss.sourceforge.net).
   * wavenet: an (untested) MATLAB mlx implementation of [wavenet](https://github.com/ibab/tensorflow-wavenet). 
* python
   * BigGANx2048-Tensorflow: 2048x2048 architecture for/of [BigGAN-Tensorflow](https://github.com/taki0112/BigGAN-Tensorflow). 
* wlnet (I used these before mathematica 12.1 implemented GAN training features.  They could still be useful to someone.)
   * GenerativeAdversarialNetworks.nb: (I pulled this off GitHUB from somewhere, but I can't find from where now).
   * MIDInet_GAN.nb: [Kotaro Okazaki](https://community.wolfram.com/groups/-/m/t/1435251) nailed something in this notebook.
   * MNIST_GAN.wb: (I nabbed this notebook from [vonkohorn](https://github.com/vonkohorn/wolfram-playtime))
   * VAE.nb: (I think I nabbed this notebook from [SiyiGuo](https://github.com/SiyiGuo/Image-Generation-with-VAE-network).  In any case SiyiGuo's Monet VAE works well).
   * WGAN.nb: (I also pulled this off GitHUB from somewhere, and I also can't find from where now).
# blabber
For most of the deep-learning experiments I've done, I've almost always used [ARSS](http://arss.sourceforge.net) ([github source](https://github.com/derselbst/ARSS)) for Audio-To-Image-To-Audio conversion. Beggining either with Mathematica's AudioPartition function or with my own identical custom-MATLAB function (which is included in the arss_gui above), I segement the audio file(s) into, e.g., 20.48s clips at an offset of 0.01s.  I then batch run ARSS over the resulting/exported folder of 20.48s audio clips to create a new folder of BMP images, firstly adjusting/setting the ARSS parameters (e.g., BPO, PPS, etc.) to insure the generated BMPs are square (e.g., 2048x2048).  For diskspace and training-speed purposes I then imagemagick mogrify those BMPs to JPGs.  Finally, I train whatever net I'm training using those JPGs.  After training, I again use ARSS for resynthesis of the images that trained-net generates (using the same parameters I used for the initial audio-to-image conversion) and the results so far range from useless to semi-interesting.  I'll put some of the results (e.g., a Gabrieli canzon, a Josquin mass, a Kanye track, etc.) up here very soon, maybe next week.  The big question I have is this: how is it that we are already so many years into the "deep learning revolution" and ARSS, which is basically ancient and a pain in the ass to compile (fftw3!), remains our very very best option for spectrogram resynthesis?!  This absolutely baffles me, but I don't know enough about DSP math to write some newer/better Python or MATLAB alternative myself (e.g., good luck using Mathematica's useless Spectrogram Inversion function!).  In any case, my hat is eternally off to [Michel Rouzic](https://github.com/Photosounder), even before ARSS became necessary for training nets I always enjoyed the heck out of messing with Photosounder!


# examples
examples of BigGAN 2048x2048, (the "x2" implies each epoch iterated x2 number of images)
* Trained on a single Kanye track, segmented into 4,096x2 images (an offset ~0.01):
   * [wav sample, generated @ epoch 34 & iter.7616](/results/KNYE_BigGAN_34_07616.wav)

* Trained on a Josquin Mass (Missa La So Fa Re Mi), segmented into 32,566x2 images (an offset ~0.01):
   * [wav sample, generated @ epoch 15 & iter.11000](/results/JSQN_BigGAN_15_11000.wav)
   * [wav sample, generated @ epoch 15 & iter.65000](/results/JSQN_BigGAN_15_65000.wav)
   * [wav sample, generated @ epoch 16 & iter.02000](/results/JSQN_BigGAN_16_02000.wav)
   * [wav sample, generated @ epoch 32 & iter.19000](/results/JSQN_BigGAN_32_19000.bmp.wav)   
   * [wav sample, generated @ epoch 32 & iter.24000](/results/JSQN_BigGAN_32_24000.bmp.wav)  
   * [wav sample, generated @ epoch 36 & iter.49000](/results/JSQN_BigGAN_36_49000.bmp.wav)
   * (more soon, still training!)
   
* Trained on some Gabrieli Canzoni, segemented into 12,015x2 images (an offset of ~0.5):
   * [wav sample, generated @ epoch 40 & iter.24000](/results/GBRLI_BigGAN_40_24000.wav)
   * [wav sample, generated @ epoch 43 & iter.16000](/results/GBRLI_BigGAN_43_16000.wav)
   * [wav sample, generated @ epoch 45 & iter.02000](/results/GBRLI_BigGAN_45_02000.wav)
   
* Trained on Ariel Pink's album The Doldrums, segemented into 27,496x2 images (an offset of ~0.1):
   * [wav sample, generated @ epoch 18 & iter.08000](/results/DLDRM_BigGAN_18_08000.wav)
   * [wav sample, generated @ epoch 18 & iter.18000](/results/DLDRM_BigGAN_18_18000.wav)
   * [wav sample, generated @ epoch 18 & iter.19000](/results/DLDRM_BigGAN_18_19000.wav)
   * [wav sample, generated @ epoch 18 & iter.20000](/results/DLDRM_BigGAN_18_20000.wav)
   * (more soon, still training!)

# future
stop calling it "ai", intellect is intrinsically and subjectively independent of matter, the artificial can't be intelligent.  (see Grenier, Thomistic Philosophy, Book IV, Chapter 1)
