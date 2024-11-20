package tools.vitruv.change.testutils

import edu.kit.ipd.sdq.activextendannotations.Lazy

class TestLauncher {
	enum Type {
		ECLIPSE,
		SUREFIRE,
		UNKNOWN
	}

	@Lazy
	static val TestLauncher.Type current = [
		val eclipseApplication = System.getProperty('eclipse.application')
		return if (eclipseApplication === null)
			TestLauncher.Type.UNKNOWN
		else if (eclipseApplication.contains('org.eclipse.pde.junit'))
			TestLauncher.Type.ECLIPSE
		else if (eclipseApplication.contains('surefire'))
			TestLauncher.Type.SUREFIRE
		else
			TestLauncher.Type.UNKNOWN
	].apply(null)

	def static currentTestLauncher() { current }
}
