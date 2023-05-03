module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() {
    %0 = llvm.mlir.constant(6.000000e+00 : f64) : f64
    %1 = llvm.mlir.constant(5.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(4.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(3.000000e+00 : f64) : f64
    %4 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %5 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %6 = llvm.mlir.constant(3 : index) : i64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.constant(6 : index) : i64
    %10 = llvm.mlir.null : !llvm.ptr<f64>
    %11 = llvm.getelementptr %10[%9] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %12 = llvm.ptrtoint %11 : !llvm.ptr<f64> to i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr<i8>
    %14 = llvm.bitcast %13 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %20 = llvm.insertvalue %6, %19[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %21 = llvm.insertvalue %7, %20[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %22 = llvm.insertvalue %7, %21[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %23 = llvm.insertvalue %8, %22[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(6 : index) : i64
    %28 = llvm.mlir.null : !llvm.ptr<f64>
    %29 = llvm.getelementptr %28[%27] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %30 = llvm.ptrtoint %29 : !llvm.ptr<f64> to i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.bitcast %31 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %38 = llvm.insertvalue %24, %37[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %39 = llvm.insertvalue %25, %38[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %40 = llvm.insertvalue %25, %39[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %41 = llvm.insertvalue %26, %40[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(3 : index) : i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.mlir.constant(6 : index) : i64
    %46 = llvm.mlir.null : !llvm.ptr<f64>
    %47 = llvm.getelementptr %46[%45] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<f64> to i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %56 = llvm.insertvalue %42, %55[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %57 = llvm.insertvalue %43, %56[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %58 = llvm.insertvalue %43, %57[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %59 = llvm.insertvalue %44, %58[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = builtin.unrealized_conversion_cast %60 : i64 to index
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = builtin.unrealized_conversion_cast %62 : i64 to index
    %64 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %65 = llvm.mlir.constant(3 : index) : i64
    %66 = llvm.mul %60, %65  : i64
    %67 = llvm.add %66, %62  : i64
    %68 = llvm.getelementptr %64[%67] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %5, %68 : !llvm.ptr<f64>
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = builtin.unrealized_conversion_cast %69 : i64 to index
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = builtin.unrealized_conversion_cast %71 : i64 to index
    %73 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %74 = llvm.mlir.constant(3 : index) : i64
    %75 = llvm.mul %69, %74  : i64
    %76 = llvm.add %75, %71  : i64
    %77 = llvm.getelementptr %73[%76] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %4, %77 : !llvm.ptr<f64>
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = builtin.unrealized_conversion_cast %78 : i64 to index
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = builtin.unrealized_conversion_cast %80 : i64 to index
    %82 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %83 = llvm.mlir.constant(3 : index) : i64
    %84 = llvm.mul %78, %83  : i64
    %85 = llvm.add %84, %80  : i64
    %86 = llvm.getelementptr %82[%85] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %3, %86 : !llvm.ptr<f64>
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = builtin.unrealized_conversion_cast %87 : i64 to index
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = builtin.unrealized_conversion_cast %89 : i64 to index
    %91 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %92 = llvm.mlir.constant(3 : index) : i64
    %93 = llvm.mul %87, %92  : i64
    %94 = llvm.add %93, %89  : i64
    %95 = llvm.getelementptr %91[%94] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %2, %95 : !llvm.ptr<f64>
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = builtin.unrealized_conversion_cast %96 : i64 to index
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = builtin.unrealized_conversion_cast %98 : i64 to index
    %100 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %101 = llvm.mlir.constant(3 : index) : i64
    %102 = llvm.mul %96, %101  : i64
    %103 = llvm.add %102, %98  : i64
    %104 = llvm.getelementptr %100[%103] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %1, %104 : !llvm.ptr<f64>
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = builtin.unrealized_conversion_cast %105 : i64 to index
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = builtin.unrealized_conversion_cast %107 : i64 to index
    %109 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %110 = llvm.mlir.constant(3 : index) : i64
    %111 = llvm.mul %105, %110  : i64
    %112 = llvm.add %111, %107  : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %0, %113 : !llvm.ptr<f64>
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(3 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%114 : i64)
  ^bb1(%117: i64):  // 2 preds: ^bb0, ^bb5
    %118 = builtin.unrealized_conversion_cast %117 : i64 to index
    %119 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %119, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%120 : i64)
  ^bb3(%123: i64):  // 2 preds: ^bb2, ^bb4
    %124 = builtin.unrealized_conversion_cast %123 : i64 to index
    %125 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %125, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %126 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %127 = llvm.mlir.constant(3 : index) : i64
    %128 = llvm.mul %123, %127  : i64
    %129 = llvm.add %128, %117  : i64
    %130 = llvm.getelementptr %126[%129] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %131 = llvm.load %130 : !llvm.ptr<f64>
    %132 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mul %117, %133  : i64
    %135 = llvm.add %134, %123  : i64
    %136 = llvm.getelementptr %132[%135] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %131, %136 : !llvm.ptr<f64>
    %137 = llvm.add %123, %122  : i64
    llvm.br ^bb3(%137 : i64)
  ^bb5:  // pred: ^bb3
    %138 = llvm.add %117, %116  : i64
    llvm.br ^bb1(%138 : i64)
  ^bb6:  // pred: ^bb1
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(3 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%139 : i64)
  ^bb7(%142: i64):  // 2 preds: ^bb6, ^bb11
    %143 = builtin.unrealized_conversion_cast %142 : i64 to index
    %144 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %144, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%145 : i64)
  ^bb9(%148: i64):  // 2 preds: ^bb8, ^bb10
    %149 = builtin.unrealized_conversion_cast %148 : i64 to index
    %150 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %150, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %151 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mul %142, %152  : i64
    %154 = llvm.add %153, %148  : i64
    %155 = llvm.getelementptr %151[%154] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %156 = llvm.load %155 : !llvm.ptr<f64>
    %157 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %158 = llvm.mlir.constant(2 : index) : i64
    %159 = llvm.mul %142, %158  : i64
    %160 = llvm.add %159, %148  : i64
    %161 = llvm.getelementptr %157[%160] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %162 = llvm.load %161 : !llvm.ptr<f64>
    %163 = llvm.fmul %156, %162  : f64
    %164 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mul %142, %165  : i64
    %167 = llvm.add %166, %148  : i64
    %168 = llvm.getelementptr %164[%167] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %163, %168 : !llvm.ptr<f64>
    %169 = llvm.add %148, %147  : i64
    llvm.br ^bb9(%169 : i64)
  ^bb11:  // pred: ^bb9
    %170 = llvm.add %142, %141  : i64
    llvm.br ^bb7(%170 : i64)
  ^bb12:  // pred: ^bb7
    %171 = llvm.extractvalue %59[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %172 = llvm.bitcast %171 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @free(%172) : (!llvm.ptr<i8>) -> ()
    %173 = llvm.extractvalue %41[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %174 = llvm.bitcast %173 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @free(%174) : (!llvm.ptr<i8>) -> ()
    %175 = llvm.extractvalue %23[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %176 = llvm.bitcast %175 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @free(%176) : (!llvm.ptr<i8>) -> ()
    llvm.return
  }
}

