let project = new Project('tensorflow');

project.addSources('Sources');

if (platform === Platform.HTML5) {
	project.addAssets('js/tfjs.js');
}
else if (platform == Platform.Krom) {
	project.addAssets('js/tfjs.js');
	project.addAssets('js/krom_tfjs.js');
}

resolve(project);
