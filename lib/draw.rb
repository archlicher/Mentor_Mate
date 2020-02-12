class Draw
	def draw(n)
		a, b, c, d = n, n, n, n * 2
		i = 0
		while i < n/2+1
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
		end
	end
end