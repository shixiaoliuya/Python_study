import heapq
def rearrangeBarcodes(barcodes):
    s = set()
    for i in barcodes:
        s.add(i)
    dic = {i: 0 for i in s}
    for i in barcodes:
        dic[i] += 1
    dic = dict(sorted(dic.items(), key=lambda x:x[1], reverse=True))
    heap = []
    for i in s:
        heapq.heappush(heap, (-dic[i], i))
    ans = []
    while len(heap) > 0:
        cx, x = heapq.heappop(heap)
        if len(ans) == 0 or ans[-1] != x:
            ans.append(x)
            if cx < -1:
                heapq.heappush(heap, (cx + 1, x))
        else:
            cy, y = heapq.heappop(heap)
            ans.append(y)
            if cy < -1:
                heapq.heappush(heap, (cy + 1, y))
            heapq.heappush(heap, (cx, x))
    return ans

barcode = eval(input())
print(rearrangeBarcodes(barcode))