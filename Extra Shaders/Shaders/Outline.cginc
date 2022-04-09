uniform float _linewidthG;

float GetLineWidth(float cameraDistance, float detailMaskB, float lineWidthS) {
	return (cameraDistance * 0.1 + 0.3) * (1.0 - detailMaskB) * lineWidthS * _linewidthG * 0.005;
}