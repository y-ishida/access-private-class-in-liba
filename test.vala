namespace A {
	public class PublicClass2 {
		public double pow4(int n) {
			var priv = new PrivateClass();
			priv.x = n;
			return priv.sq() * priv.sq();
		}
	}
}

static int main(string[] args)
{
	var pub = new A.PublicClass();
	pub.y = 5;
	print("2^2 + 5 = %.1f\n", pub.sq_add(2));

	var pub2 = new A.PublicClass2();
	print("2^4 = %.1f\n", pub2.pow4(2));

	return 0;
}


