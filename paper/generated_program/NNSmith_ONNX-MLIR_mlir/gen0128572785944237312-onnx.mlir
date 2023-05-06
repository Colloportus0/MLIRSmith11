module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_0(dense<[[[[[4]], [[6]]]]]> : tensor<1x1x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<1 x array<1 x i32>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(2147483647 : i32) : i32
    %12 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x array<1 x i32>>>>>>
    %13 = llvm.bitcast %12 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %15 = llvm.insertvalue %13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.insertvalue %13, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.insertvalue %17, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.mlir.null : !llvm.ptr<i32>
    %46 = llvm.getelementptr %45[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.mlir.constant(16 : index) : i64
    %49 = llvm.add %47, %48  : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.sub %48, %53  : i64
    %55 = llvm.add %52, %54  : i64
    %56 = llvm.urem %55, %48  : i64
    %57 = llvm.sub %55, %56  : i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.insertvalue %51, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %39, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %40, %64[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %41, %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %42, %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %40, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %41, %68[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %42, %69[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.insertvalue %43, %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%72 : i64)
  ^bb1(%75: i64):  // 2 preds: ^bb0, ^bb11
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%77 : i64)
  ^bb3(%80: i64):  // 2 preds: ^bb2, ^bb10
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%82 : i64)
  ^bb5(%85: i64):  // 2 preds: ^bb4, ^bb9
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%87 : i64)
  ^bb7(%90: i64):  // 2 preds: ^bb6, ^bb8
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %92 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mul %75, %93  : i64
    %95 = llvm.add %94, %80  : i64
    %96 = llvm.add %95, %85  : i64
    %97 = llvm.add %96, %90  : i64
    %98 = llvm.getelementptr %92[%97] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %11, %98 : !llvm.ptr<i32>
    %99 = llvm.add %90, %89  : i64
    llvm.br ^bb7(%99 : i64)
  ^bb9:  // pred: ^bb7
    %100 = llvm.add %85, %84  : i64
    llvm.br ^bb5(%100 : i64)
  ^bb10:  // pred: ^bb5
    %101 = llvm.add %80, %79  : i64
    llvm.br ^bb3(%101 : i64)
  ^bb11:  // pred: ^bb3
    %102 = llvm.add %75, %74  : i64
    llvm.br ^bb1(%102 : i64)
  ^bb12:  // pred: ^bb1
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%103 : i64)
  ^bb13(%106: i64):  // 2 preds: ^bb12, ^bb26
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%108 : i64)
  ^bb15(%111: i64):  // 2 preds: ^bb14, ^bb25
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%113 : i64)
  ^bb17(%116: i64):  // 2 preds: ^bb16, ^bb24
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%118 : i64)
  ^bb19(%121: i64):  // 2 preds: ^bb18, ^bb23
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%123 : i64)
  ^bb21(%126: i64):  // 2 preds: ^bb20, ^bb22
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %128 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mul %106, %129  : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %111, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.add %133, %116  : i64
    %135 = llvm.add %134, %121  : i64
    %136 = llvm.add %135, %126  : i64
    %137 = llvm.getelementptr %128[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.load %137 : !llvm.ptr<i32>
    %139 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %111, %140  : i64
    %142 = llvm.add %141, %116  : i64
    %143 = llvm.add %142, %121  : i64
    %144 = llvm.add %143, %126  : i64
    %145 = llvm.getelementptr %139[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.icmp "slt" %146, %138 : i32
    %148 = llvm.select %147, %146, %138 : i1, i32
    %149 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mul %111, %150  : i64
    %152 = llvm.add %151, %116  : i64
    %153 = llvm.add %152, %121  : i64
    %154 = llvm.add %153, %126  : i64
    %155 = llvm.getelementptr %149[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %148, %155 : !llvm.ptr<i32>
    %156 = llvm.add %126, %125  : i64
    llvm.br ^bb21(%156 : i64)
  ^bb23:  // pred: ^bb21
    %157 = llvm.add %121, %120  : i64
    llvm.br ^bb19(%157 : i64)
  ^bb24:  // pred: ^bb19
    %158 = llvm.add %116, %115  : i64
    llvm.br ^bb17(%158 : i64)
  ^bb25:  // pred: ^bb17
    %159 = llvm.add %111, %110  : i64
    llvm.br ^bb15(%159 : i64)
  ^bb26:  // pred: ^bb15
    %160 = llvm.add %106, %105  : i64
    llvm.br ^bb13(%160 : i64)
  ^bb27:  // pred: ^bb13
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.null : !llvm.ptr<i32>
    %168 = llvm.getelementptr %167[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %169 = llvm.ptrtoint %168 : !llvm.ptr<i32> to i64
    %170 = llvm.mlir.constant(16 : index) : i64
    %171 = llvm.add %169, %170  : i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %174 = llvm.ptrtoint %173 : !llvm.ptr<i32> to i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.sub %170, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.urem %177, %170  : i64
    %179 = llvm.sub %177, %178  : i64
    %180 = llvm.inttoptr %179 : i64 to !llvm.ptr<i32>
    %181 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %182 = llvm.insertvalue %173, %181[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %183 = llvm.insertvalue %180, %182[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.insertvalue %184, %183[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %186 = llvm.insertvalue %161, %185[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.insertvalue %162, %186[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %188 = llvm.insertvalue %163, %187[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.insertvalue %165, %188[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %190 = llvm.insertvalue %163, %189[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.insertvalue %164, %190[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%192 : i64)
  ^bb28(%195: i64):  // 2 preds: ^bb27, ^bb35
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb29, ^bb36
  ^bb29:  // pred: ^bb28
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%197 : i64)
  ^bb30(%200: i64):  // 2 preds: ^bb29, ^bb34
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb31, ^bb35
  ^bb31:  // pred: ^bb30
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%202 : i64)
  ^bb32(%205: i64):  // 2 preds: ^bb31, ^bb33
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %207 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %195, %208  : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mul %200, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.add %212, %205  : i64
    %214 = llvm.getelementptr %207[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.load %214 : !llvm.ptr<i32>
    %216 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.mul %195, %217  : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %200, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.add %221, %205  : i64
    %223 = llvm.getelementptr %216[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %215, %223 : !llvm.ptr<i32>
    %224 = llvm.add %205, %204  : i64
    llvm.br ^bb32(%224 : i64)
  ^bb34:  // pred: ^bb32
    %225 = llvm.add %200, %199  : i64
    llvm.br ^bb30(%225 : i64)
  ^bb35:  // pred: ^bb30
    %226 = llvm.add %195, %194  : i64
    llvm.br ^bb28(%226 : i64)
  ^bb36:  // pred: ^bb28
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mlir.null : !llvm.ptr<i32>
    %236 = llvm.getelementptr %235[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i32> to i64
    %238 = llvm.mlir.constant(16 : index) : i64
    %239 = llvm.add %237, %238  : i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.bitcast %240 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i32> to i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.sub %238, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.urem %245, %238  : i64
    %247 = llvm.sub %245, %246  : i64
    %248 = llvm.inttoptr %247 : i64 to !llvm.ptr<i32>
    %249 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %250 = llvm.insertvalue %241, %249[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %248, %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %227, %253[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %228, %254[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %229, %255[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %230, %256[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %233, %257[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %232, %258[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %230, %259[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %231, %260[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%262 : i64)
  ^bb37(%265: i64):  // 2 preds: ^bb36, ^bb47
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%267 : i64)
  ^bb39(%270: i64):  // 2 preds: ^bb38, ^bb46
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%272 : i64)
  ^bb41(%275: i64):  // 2 preds: ^bb40, ^bb45
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%277 : i64)
  ^bb43(%280: i64):  // 2 preds: ^bb42, ^bb44
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %282 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mul %10, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %275, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.add %287, %280  : i64
    %289 = llvm.getelementptr %282[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %290 = llvm.load %289 : !llvm.ptr<i32>
    %291 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.mul %265, %292  : i64
    %294 = llvm.add %293, %270  : i64
    %295 = llvm.add %294, %275  : i64
    %296 = llvm.add %295, %10  : i64
    %297 = llvm.getelementptr %291[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %298 = llvm.load %297 : !llvm.ptr<i32>
    %299 = llvm.icmp "slt" %290, %298 : i32
    %300 = llvm.select %299, %290, %298 : i1, i32
    %301 = llvm.extractvalue %261[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mul %265, %302  : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mul %270, %304  : i64
    %306 = llvm.add %303, %305  : i64
    %307 = llvm.mlir.constant(2 : index) : i64
    %308 = llvm.mul %275, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.add %309, %280  : i64
    %311 = llvm.getelementptr %301[%310] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %300, %311 : !llvm.ptr<i32>
    %312 = llvm.add %280, %279  : i64
    llvm.br ^bb43(%312 : i64)
  ^bb45:  // pred: ^bb43
    %313 = llvm.add %275, %274  : i64
    llvm.br ^bb41(%313 : i64)
  ^bb46:  // pred: ^bb41
    %314 = llvm.add %270, %269  : i64
    llvm.br ^bb39(%314 : i64)
  ^bb47:  // pred: ^bb39
    %315 = llvm.add %265, %264  : i64
    llvm.br ^bb37(%315 : i64)
  ^bb48:  // pred: ^bb37
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mlir.null : !llvm.ptr<i32>
    %325 = llvm.getelementptr %324[%323] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i32> to i64
    %327 = llvm.mlir.constant(16 : index) : i64
    %328 = llvm.add %326, %327  : i64
    %329 = llvm.call @malloc(%328) : (i64) -> !llvm.ptr<i8>
    %330 = llvm.bitcast %329 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i32> to i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.sub %327, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.urem %334, %327  : i64
    %336 = llvm.sub %334, %335  : i64
    %337 = llvm.inttoptr %336 : i64 to !llvm.ptr<i32>
    %338 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %339 = llvm.insertvalue %330, %338[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %337, %339[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.insertvalue %341, %340[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %316, %342[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %317, %343[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %318, %344[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %319, %345[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %322, %346[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %321, %347[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %319, %348[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %320, %349[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%351 : i64)
  ^bb49(%354: i64):  // 2 preds: ^bb48, ^bb59
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%356 : i64)
  ^bb51(%359: i64):  // 2 preds: ^bb50, ^bb58
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%361 : i64)
  ^bb53(%364: i64):  // 2 preds: ^bb52, ^bb57
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%366 : i64)
  ^bb55(%369: i64):  // 2 preds: ^bb54, ^bb56
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %371 = llvm.extractvalue %261[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.mlir.constant(4 : index) : i64
    %373 = llvm.mul %354, %372  : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mul %359, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mul %364, %377  : i64
    %379 = llvm.add %376, %378  : i64
    %380 = llvm.add %379, %369  : i64
    %381 = llvm.getelementptr %371[%380] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %382 = llvm.load %381 : !llvm.ptr<i32>
    %383 = llvm.extractvalue %350[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mlir.constant(4 : index) : i64
    %385 = llvm.mul %354, %384  : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mul %369, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %364, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %359  : i64
    %393 = llvm.getelementptr %383[%392] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %382, %393 : !llvm.ptr<i32>
    %394 = llvm.add %369, %368  : i64
    llvm.br ^bb55(%394 : i64)
  ^bb57:  // pred: ^bb55
    %395 = llvm.add %364, %363  : i64
    llvm.br ^bb53(%395 : i64)
  ^bb58:  // pred: ^bb53
    %396 = llvm.add %359, %358  : i64
    llvm.br ^bb51(%396 : i64)
  ^bb59:  // pred: ^bb51
    %397 = llvm.add %354, %353  : i64
    llvm.br ^bb49(%397 : i64)
  ^bb60:  // pred: ^bb49
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.mlir.null : !llvm.ptr<i1>
    %407 = llvm.getelementptr %406[%405] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %408 = llvm.ptrtoint %407 : !llvm.ptr<i1> to i64
    %409 = llvm.mlir.constant(16 : index) : i64
    %410 = llvm.add %408, %409  : i64
    %411 = llvm.call @malloc(%410) : (i64) -> !llvm.ptr<i8>
    %412 = llvm.bitcast %411 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %413 = llvm.ptrtoint %412 : !llvm.ptr<i1> to i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.sub %409, %414  : i64
    %416 = llvm.add %413, %415  : i64
    %417 = llvm.urem %416, %409  : i64
    %418 = llvm.sub %416, %417  : i64
    %419 = llvm.inttoptr %418 : i64 to !llvm.ptr<i1>
    %420 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %421 = llvm.insertvalue %412, %420[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %419, %421[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.insertvalue %423, %422[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %398, %424[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %399, %425[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %400, %426[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %401, %427[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %404, %428[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %403, %429[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %401, %430[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %402, %431[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%433 : i64)
  ^bb61(%436: i64):  // 2 preds: ^bb60, ^bb71
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%438 : i64)
  ^bb63(%441: i64):  // 2 preds: ^bb62, ^bb70
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%443 : i64)
  ^bb65(%446: i64):  // 2 preds: ^bb64, ^bb69
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%448 : i64)
  ^bb67(%451: i64):  // 2 preds: ^bb66, ^bb68
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %453 = llvm.extractvalue %350[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mlir.constant(4 : index) : i64
    %455 = llvm.mul %436, %454  : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mul %441, %456  : i64
    %458 = llvm.add %455, %457  : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mul %446, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.add %461, %451  : i64
    %463 = llvm.getelementptr %453[%462] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %464 = llvm.load %463 : !llvm.ptr<i32>
    %465 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mul %10, %466  : i64
    %468 = llvm.mlir.constant(2 : index) : i64
    %469 = llvm.mul %446, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.add %470, %451  : i64
    %472 = llvm.getelementptr %465[%471] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %473 = llvm.load %472 : !llvm.ptr<i32>
    %474 = llvm.icmp "sgt" %464, %473 : i32
    %475 = llvm.extractvalue %432[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %436, %476  : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mul %441, %478  : i64
    %480 = llvm.add %477, %479  : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mul %446, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.add %483, %451  : i64
    %485 = llvm.getelementptr %475[%484] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %474, %485 : !llvm.ptr<i1>
    %486 = llvm.add %451, %450  : i64
    llvm.br ^bb67(%486 : i64)
  ^bb69:  // pred: ^bb67
    %487 = llvm.add %446, %445  : i64
    llvm.br ^bb65(%487 : i64)
  ^bb70:  // pred: ^bb65
    %488 = llvm.add %441, %440  : i64
    llvm.br ^bb63(%488 : i64)
  ^bb71:  // pred: ^bb63
    %489 = llvm.add %436, %435  : i64
    llvm.br ^bb61(%489 : i64)
  ^bb72:  // pred: ^bb61
    llvm.return %432 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %10, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %37 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %38 = llvm.mlir.constant(1 : i64) : i64
    %39 = llvm.mlir.constant(8 : i64) : i64
    %40 = llvm.call @malloc(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %42 = llvm.mlir.constant(4 : i64) : i64
    %43 = llvm.call @omTensorCreateUntyped(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.extractvalue %37[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.bitcast %45 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %47 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.bitcast %47 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%43, %44, %46, %48) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %49 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%43, %49) : (!llvm.ptr<i8>, i64) -> ()
    %50 = llvm.call @omTensorGetShape(%43) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %51 = llvm.call @omTensorGetStrides(%43) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %52 = llvm.mlir.constant(0 : i64) : i64
    %53 = llvm.extractvalue %37[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %50[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.extractvalue %37[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.getelementptr %51[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.extractvalue %37[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %50[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.extractvalue %37[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %51[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.mlir.constant(2 : i64) : i64
    %63 = llvm.extractvalue %37[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %50[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %37[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %51[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(3 : i64) : i64
    %68 = llvm.extractvalue %37[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %50[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %37[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %51[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.getelementptr %41[%72] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %43, %73 : !llvm.ptr<ptr<i8>>
    %74 = llvm.call @omTensorListCreate(%41, %38, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %74 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<68 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<68 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

