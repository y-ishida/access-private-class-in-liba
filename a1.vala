namespace A {
	public class PublicClass {
		public int y;
		public double sq_add(int x) {
			var priv = new PrivateClass();
			priv.x = x;
			return priv.sq() + y;
		}
	}
}

