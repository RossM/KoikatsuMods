uniform float _linewidthG;

float GetLineWidth(float cameraDistance, float detailMaskB, float lineWidthS) {
	return ((cameraDistance) * 0.1 + 0.3) * (_linewidthG * 0.005 + 0.0) * (1.0 - detailMaskB) * lineWidthS;
}