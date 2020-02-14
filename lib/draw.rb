class Draw
	def draw(n)
		top_mm_logo(n)
		bottom_mm_logo(n)
	end

	def top_mm_logo(n)
		a, b, c, d = n, n, n, n * 2
		i = 0
		while i <= n/2
			print('-' * a)
			print('*' * b)
			print('-' * c)
			print('*' * b)
			print('-' * d)
			print('*' * b)
			print('-' * c)
			print('*' * b)
			puts('-' * a)
			a -= 1
			b += 2
			b = n * 2 - 1 if b == n * 2 + 1
			c -= 2
			c = 1 if c < 0
			d -= 2
			i += 1
		end
	end

	def bottom_mm_logo(n)
		a = n/2
		b = n * 2 - 1
		c = 1
		d = n - 1
		i = n/2
		while i <= n
			print('-' * a)
			print('*' * n)
			print('-' * c)
			print('*' * b)
			print('-' * c)
			print('*' * n)
			print('-' * d)
			print('*' * n)
			print('-' * c)
			print('*' * b)
			print('-' * c)
			print('*' * n)
			puts('-' * a)
			a -= 1
			b -= 2
			c += 2
			d -= 2
			i += 1
			break if n < c
		end
	end
end